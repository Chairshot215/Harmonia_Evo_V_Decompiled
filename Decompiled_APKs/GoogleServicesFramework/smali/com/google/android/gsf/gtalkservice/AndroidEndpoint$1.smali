.class Lcom/google/android/gsf/gtalkservice/AndroidEndpoint$1;
.super Ljava/lang/Thread;
.source "AndroidEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->asyncCloseConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

.field final synthetic val$connection:Lorg/jivesoftware/smack/XMPPConnection;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;Ljava/lang/String;Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint$1;->this$0:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint$1;->val$connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint$1;->val$connection:Lorg/jivesoftware/smack/XMPPConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->close(Z)V

    .line 415
    return-void
.end method
