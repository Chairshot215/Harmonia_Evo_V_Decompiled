.class Lcom/google/android/talk/TalkApp$3;
.super Ljava/lang/Object;
.source "TalkApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/TalkApp;->setImSessionAvailable(Ljava/lang/String;Lcom/google/android/gtalkservice/IImSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/TalkApp;

.field final synthetic val$session:Lcom/google/android/gtalkservice/IImSession;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/TalkApp;Ljava/lang/String;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/google/android/talk/TalkApp$3;->this$0:Lcom/google/android/talk/TalkApp;

    iput-object p2, p0, Lcom/google/android/talk/TalkApp$3;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/talk/TalkApp$3;->val$session:Lcom/google/android/gtalkservice/IImSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 527
    new-instance v0, Lcom/google/android/talk/TalkApp$3$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/TalkApp$3$1;-><init>(Lcom/google/android/talk/TalkApp$3;)V

    .line 550
    .local v0, l:Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    iget-object v1, p0, Lcom/google/android/talk/TalkApp$3;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1, v0}, Lcom/google/android/talk/TalkApp;->addAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    .line 551
    return-void
.end method
