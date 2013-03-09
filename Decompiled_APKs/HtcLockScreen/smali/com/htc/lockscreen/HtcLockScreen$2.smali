.class Lcom/htc/lockscreen/HtcLockScreen$2;
.super Ljava/lang/Object;
.source "HtcLockScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lockscreen/HtcLockScreen;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/HtcLockScreen;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/HtcLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/lockscreen/HtcLockScreen$2;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method
