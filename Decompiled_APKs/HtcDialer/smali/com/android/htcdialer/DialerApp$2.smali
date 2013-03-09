.class Lcom/android/htcdialer/DialerApp$2;
.super Ljava/lang/Object;
.source "DialerApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/DialerApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/DialerApp;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/DialerApp;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/htcdialer/DialerApp$2;->this$0:Lcom/android/htcdialer/DialerApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/htcdialer/DialerApp$2;->this$0:Lcom/android/htcdialer/DialerApp;

    #calls: Lcom/android/htcdialer/DialerApp;->switchCorrectComponent()V
    invoke-static {v0}, Lcom/android/htcdialer/DialerApp;->access$000(Lcom/android/htcdialer/DialerApp;)V

    .line 201
    return-void
.end method
