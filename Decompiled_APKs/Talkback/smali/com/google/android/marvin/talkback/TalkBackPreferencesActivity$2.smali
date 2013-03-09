.class Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity$2;
.super Ljava/lang/Object;
.source "TalkBackPreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity$2;->this$0:Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 391
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 393
    .local v1, requestedState:Z
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity$2;->this$0:Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;

    .line 392
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 397
    .local v0, prefs:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity$2;->this$0:Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;

    invoke-virtual {v2}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 398
    const v3, 0x7f09000f

    .line 397
    invoke-static {v0, v2, v3, v1}, Lcom/googlecode/eyesfree/utils/SharedPreferencesUtils;->putBooleanPref(Landroid/content/SharedPreferences;Landroid/content/res/Resources;IZ)V

    .line 403
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity$2;->this$0:Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;

    iget-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity$2;->this$0:Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;

    invoke-virtual {v3}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    #calls: Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->isAccessibilityEnabled(Landroid/content/ContentResolver;)Z
    invoke-static {v2, v3}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->access$1(Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;Landroid/content/ContentResolver;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 404
    const/4 v2, 0x1

    .line 412
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
