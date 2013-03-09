.class Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity$1;
.super Landroid/database/ContentObserver;
.source "TalkBackPreferencesActivity.java"


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
.method constructor <init>(Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity$1;->this$0:Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;

    .line 375
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 378
    if-eqz p1, :cond_0

    .line 384
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity$1;->this$0:Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;

    #calls: Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->updateTouchExplorationState()V
    invoke-static {v0}, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;->access$0(Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;)V

    goto :goto_0
.end method
