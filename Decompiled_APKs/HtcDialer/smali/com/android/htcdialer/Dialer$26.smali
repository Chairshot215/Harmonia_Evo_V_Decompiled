.class Lcom/android/htcdialer/Dialer$26;
.super Ljava/lang/Thread;
.source "Dialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer;->requeryIpDial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter

    .prologue
    .line 7749
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$26;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 7752
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$26;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mIpDialCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$5200(Lcom/android/htcdialer/Dialer;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 7753
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 7754
    return-void
.end method
