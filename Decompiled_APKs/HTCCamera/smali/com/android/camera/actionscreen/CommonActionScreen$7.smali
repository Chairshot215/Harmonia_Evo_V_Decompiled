.class Lcom/android/camera/actionscreen/CommonActionScreen$7;
.super Ljava/lang/Object;
.source "CommonActionScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actionscreen/CommonActionScreen;
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

    iput-object p1, p0, Lcom/android/camera/actionscreen/CommonActionScreen$7;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen$7;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #setter for: Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$502(Lcom/android/camera/actionscreen/CommonActionScreen;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen$7;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #setter for: Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$602(Lcom/android/camera/actionscreen/CommonActionScreen;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
