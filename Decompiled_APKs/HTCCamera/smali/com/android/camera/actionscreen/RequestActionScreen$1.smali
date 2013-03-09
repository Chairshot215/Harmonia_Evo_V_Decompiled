.class Lcom/android/camera/actionscreen/RequestActionScreen$1;
.super Ljava/lang/Object;
.source "RequestActionScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actionscreen/RequestActionScreen;->prepareActionScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actionscreen/RequestActionScreen;


# direct methods
.method constructor <init>(Lcom/android/camera/actionscreen/RequestActionScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/actionscreen/RequestActionScreen$1;->this$0:Lcom/android/camera/actionscreen/RequestActionScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen$1;->this$0:Lcom/android/camera/actionscreen/RequestActionScreen;

    #calls: Lcom/android/camera/actionscreen/RequestActionScreen;->onDoneClicked()V
    invoke-static {v0}, Lcom/android/camera/actionscreen/RequestActionScreen;->access$000(Lcom/android/camera/actionscreen/RequestActionScreen;)V

    return-void
.end method
