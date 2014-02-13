#include <UIKit/UIKit.h>

@interface SBLockScreenScrollView : UIScrollView

@property(assign, nonatomic) id passcodeView; // SBUIPasscodeLockView
-(BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
-(BOOL)touchesShouldCancelInContentView:(id)touches;
@end


%hook SBLockScreenScrollView

-(id)initWithFrame:(CGRect)frame{
	NSLog(@"[LockFreeze] Preventing lock screen paging now...");
	SBLockScreenScrollView *view = %orig();
	view.scrollEnabled = NO;
	return view;
}

%end