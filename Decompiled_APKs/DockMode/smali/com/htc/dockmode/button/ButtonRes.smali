.class public Lcom/htc/dockmode/button/ButtonRes;
.super Ljava/lang/Object;
.source "ButtonRes.java"


# instance fields
.field public base_left:I

.field public button:[I

.field public buttonExit:I

.field public button_selector:I

.field public photoFrame:I

.field public strButtonExit:Ljava/lang/String;

.field public strPhotoFrame:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3
    .parameter "res"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/dockmode/button/ButtonRes;->button:[I

    .line 18
    const v0, 0x7f0a0005

    iput v0, p0, Lcom/htc/dockmode/button/ButtonRes;->buttonExit:I

    .line 19
    const v0, 0x7f020007

    iput v0, p0, Lcom/htc/dockmode/button/ButtonRes;->base_left:I

    .line 20
    const v0, 0x7f020001

    iput v0, p0, Lcom/htc/dockmode/button/ButtonRes;->button_selector:I

    .line 21
    const v0, 0x7f080010

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/button/ButtonRes;->strButtonExit:Ljava/lang/String;

    .line 22
    const v0, 0x7f02004a

    iput v0, p0, Lcom/htc/dockmode/button/ButtonRes;->photoFrame:I

    .line 24
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonRes;->button:[I

    const/4 v1, 0x0

    const v2, 0x7f0a0002

    aput v2, v0, v1

    .line 25
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonRes;->button:[I

    const/4 v1, 0x1

    const v2, 0x7f0a0003

    aput v2, v0, v1

    .line 26
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonRes;->button:[I

    const/4 v1, 0x2

    const v2, 0x7f0a0004

    aput v2, v0, v1

    .line 28
    const v0, 0x7f080011

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/button/ButtonRes;->strPhotoFrame:Ljava/lang/String;

    .line 30
    return-void
.end method
