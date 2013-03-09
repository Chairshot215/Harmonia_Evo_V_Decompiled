.class Lcom/google/android/marvin/talkback/PreferenceFeedbackController$1;
.super Ljava/lang/Object;
.source "PreferenceFeedbackController.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


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
.method constructor <init>(Lcom/google/android/marvin/talkback/PreferenceFeedbackController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/PreferenceFeedbackController$1;->this$0:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/marvin/talkback/PreferenceFeedbackController$1;->this$0:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    #calls: Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->updatePreferences(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->access$0(Lcom/google/android/marvin/talkback/PreferenceFeedbackController;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 124
    return-void
.end method
