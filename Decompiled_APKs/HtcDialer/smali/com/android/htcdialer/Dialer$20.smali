.class Lcom/android/htcdialer/Dialer$20;
.super Ljava/lang/Object;
.source "Dialer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer;->initTaskBar()V
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
    .line 6320
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$20;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 6322
    const/4 v0, 0x1

    return v0
.end method
