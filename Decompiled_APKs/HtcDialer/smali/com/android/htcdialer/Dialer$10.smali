.class Lcom/android/htcdialer/Dialer$10;
.super Ljava/lang/Object;
.source "Dialer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer;->setupVoiceDialing()V
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
    .line 2112
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$10;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$10;->this$0:Lcom/android/htcdialer/Dialer;

    #calls: Lcom/android/htcdialer/Dialer;->startVoiceRecognitionActivity()V
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$2100(Lcom/android/htcdialer/Dialer;)V

    .line 2116
    return-void
.end method
