.class Lcom/android/camera/actionscreen/CommonActionScreen$16;
.super Ljava/lang/Object;
.source "CommonActionScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actionscreen/CommonActionScreen;->prepareDoubleShotActionScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actionscreen/CommonActionScreen;


# direct methods
.method constructor <init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen$16;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #calls: Lcom/android/camera/actionscreen/CommonActionScreen;->onShareClicked()V
    invoke-static {v0}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$400(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    return-void
.end method
