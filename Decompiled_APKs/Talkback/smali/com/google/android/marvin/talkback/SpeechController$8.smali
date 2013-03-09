.class Lcom/google/android/marvin/talkback/SpeechController$8;
.super Ljava/lang/Object;
.source "SpeechController.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/SpeechController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/SpeechController;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/SpeechController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/SpeechController$8;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    .line 1224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 1228
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController$8;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    #getter for: Lcom/google/android/marvin/talkback/SpeechController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/marvin/talkback/SpeechController;->access$4(Lcom/google/android/marvin/talkback/SpeechController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1231
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController$8;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    #calls: Lcom/google/android/marvin/talkback/SpeechController;->manageTtsOverlayEnabled(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V
    invoke-static {v1, v0, p1}, Lcom/google/android/marvin/talkback/SpeechController;->access$8(Lcom/google/android/marvin/talkback/SpeechController;Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V

    .line 1232
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController$8;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    #calls: Lcom/google/android/marvin/talkback/SpeechController;->manageIntonationEnabled(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V
    invoke-static {v1, v0, p1}, Lcom/google/android/marvin/talkback/SpeechController;->access$9(Lcom/google/android/marvin/talkback/SpeechController;Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V

    .line 1233
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController$8;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    #calls: Lcom/google/android/marvin/talkback/SpeechController;->manageSpeechVolume(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V
    invoke-static {v1, v0, p1}, Lcom/google/android/marvin/talkback/SpeechController;->access$10(Lcom/google/android/marvin/talkback/SpeechController;Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V

    .line 1234
    return-void
.end method
