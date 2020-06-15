NSUserDefaults *defaults;
BOOL enabled;

void ReloadPrefs() {
    defaults = [[NSUserDefaults alloc] initWithSuiteName:@"@@PACKAGENAME@@.prefs"];
    [defaults registerDefaults:@{ @"enabled" : YES }];
    
    enabled = [[defaults objectForKey:@"enabled"] boolValue];
}

%ctor {
    ReloadPrefs();
    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)ReloadPrefs, CFSTR("@@PACKAGENAME@@/ReloadPreferences"), NULL, kNilOptions);

    %init;
}