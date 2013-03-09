.class Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$1;
.super Ljava/lang/Object;
.source "LiveGridviewTemplateBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;


# direct methods
.method constructor <init>(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$1;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
