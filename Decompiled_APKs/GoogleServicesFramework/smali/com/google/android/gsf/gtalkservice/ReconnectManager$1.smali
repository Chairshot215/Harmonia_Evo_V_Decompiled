.class Lcom/google/android/gsf/gtalkservice/ReconnectManager$1;
.super Ljava/lang/Object;
.source "ReconnectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/ReconnectManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/ReconnectManager;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/ReconnectManager;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager$1;->this$0:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager$1;->this$0:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    #calls: Lcom/google/android/gsf/gtalkservice/ReconnectManager;->handleAlarmCallback()V
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->access$000(Lcom/google/android/gsf/gtalkservice/ReconnectManager;)V

    .line 112
    return-void
.end method
