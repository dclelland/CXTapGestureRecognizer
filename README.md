CXTapGestureRecognizer
======================

UILongPressGestureRecognizer subclass that takes much of the effort out of recognizing taps.

    CXTapGestureRecognizer *gestureRecognizer = [[CXTapGestureRecognizer alloc] init];
    gestureRecognizer.delegate = self;
    [self.view addGestureRecognizer:gestureRecognizer];
    
✓ Delegate protocol methods for `start`, `update`, `cancel`, and `finish`.
    
    - (void)tapGestureRecognizerDidStart:(CXTapGestureRecognizer *)gestureRecognizer
    {
        NSLog("Gesture recognizer started");
    }
    
    - (void)tapGestureRecognizerDidUpdate:(CXTapGestureRecognizer *)gestureRecognizer
    {
        NSLog("Gesture recognizer updated");
    }
    
    - (void)tapGestureRecognizerDidCancel:(CXTapGestureRecognizer *)gestureRecognizer
    {
        NSLog("Gesture recognizer cancelled");
    }
    
    - (void)tapGestureRecognizerDidFinish:(CXTapGestureRecognizer *)gestureRecognizer
    {
        NSLog("Gesture recognizer finished");
    }

✓ Delegate method for cancellation.

    - (BOOL)tapGestureRecognizerShouldCancel:(CXSwipeGestureRecognizer *)gestureRecognizer
    {
        return YES;
    }

### Full API:

CXSwipeGestureRecognizerDelegate <UIGestureRecognizerDelegate>

    - (void)tapGestureRecognizerDidStart:(CXTapGestureRecognizer *)gestureRecognizer;
    - (void)tapGestureRecognizerDidUpdate:(CXTapGestureRecognizer *)gestureRecognizer;
    - (void)tapGestureRecognizerDidCancel:(CXTapGestureRecognizer *)gestureRecognizer;
    - (void)tapGestureRecognizerDidFinish:(CXTapGestureRecognizer *)gestureRecognizer;

    - (BOOL)tapGestureRecognizerShouldCancel:(CXTapGestureRecognizer *)gestureRecognizer;

CXSwipeGestureRecognizer : UILongPressGestureRecognizer

    @property (unsafe_unretained) id <CXTapGestureRecognizerDelegate> delegate;
