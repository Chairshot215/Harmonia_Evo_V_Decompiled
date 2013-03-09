.class Lcom/google/android/marvin/talkback/PreferenceFeedbackController$2;
.super Landroid/database/ContentObserver;
.source "PreferenceFeedbackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/PreferenceFeedbackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/PreferenceFeedbackController;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/PreferenceFeedbackController$2;->this$0:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    .line 127
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 130
    if-eqz p1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/google/android/marvin/talkback/PreferenceFeedbackController$2;->this$0:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    #calls: Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->getContext()Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->access$1(Lcom/google/android/marvin/talkback/PreferenceFeedbackController;)Landroid/content/Context;

    move-result-object v0

    .line 136
    .local v0, ctx:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 140
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 141
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/google/android/marvin/talkback/PreferenceFeedbackController$2;->this$0:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    const/4 v3, 0x0

    #calls: Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->updatePreferences(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    invoke-static {v2, v1, v3}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->access$0(Lcom/google/android/marvin/talkback/PreferenceFeedbackController;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0
.end method
