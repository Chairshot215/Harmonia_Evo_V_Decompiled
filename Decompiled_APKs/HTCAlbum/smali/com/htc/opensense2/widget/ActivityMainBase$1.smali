.class Lcom/htc/opensense2/widget/ActivityMainBase$1;
.super Ljava/lang/Object;
.source "ActivityMainBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/widget/ActivityMainBase;->onCreateProgressDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/widget/ActivityMainBase;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/widget/ActivityMainBase;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/htc/opensense2/widget/ActivityMainBase$1;->this$0:Lcom/htc/opensense2/widget/ActivityMainBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 273
    packed-switch p2, :pswitch_data_0

    .line 279
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 276
    :pswitch_0
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase$1;->this$0:Lcom/htc/opensense2/widget/ActivityMainBase;

    #calls: Lcom/htc/opensense2/widget/ActivityMainBase;->onProgressBackPressed(Landroid/content/DialogInterface;)V
    invoke-static {v0, p1}, Lcom/htc/opensense2/widget/ActivityMainBase;->access$100(Lcom/htc/opensense2/widget/ActivityMainBase;Landroid/content/DialogInterface;)V

    .line 277
    const/4 v0, 0x1

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
