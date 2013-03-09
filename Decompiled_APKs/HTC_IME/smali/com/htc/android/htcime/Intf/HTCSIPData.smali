.class public Lcom/htc/android/htcime/Intf/HTCSIPData;
.super Ljava/lang/Object;
.source "HTCSIPData.java"


# instance fields
.field public bAddBtnVisibile:Z

.field public bAddWordBtnVisibile:Z

.field public bCancelBtnVisibile:Z

.field public bCloseSIPBtnVisibile:Z

.field public bDropBtnVisibile:Z

.field public bMenuBtnVisibile:Z

.field public dialogName:Ljava/lang/String;

.field public isAddWordMode:Z

.field public isWCLVisible:Z

.field public packageName:Ljava/lang/String;

.field public sipHeight:I

.field public sipID:I

.field public sipName:Ljava/lang/String;

.field public sipTrayIcon:Landroid/graphics/drawable/Drawable;

.field public sipWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/htcime/Intf/HTCSIPData;->packageName:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/htcime/Intf/HTCSIPData;->dialogName:Ljava/lang/String;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 29
    iput v1, p0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 30
    iput v1, p0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipWidth:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipTrayIcon:Landroid/graphics/drawable/Drawable;

    .line 34
    iput-boolean v1, p0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isAddWordMode:Z

    .line 35
    iput-boolean v1, p0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 38
    iput-boolean v1, p0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bMenuBtnVisibile:Z

    .line 39
    iput-boolean v1, p0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bAddWordBtnVisibile:Z

    .line 40
    iput-boolean v1, p0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bAddBtnVisibile:Z

    .line 41
    iput-boolean v1, p0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bCancelBtnVisibile:Z

    .line 42
    iput-boolean v1, p0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bCloseSIPBtnVisibile:Z

    .line 43
    iput-boolean v1, p0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    return-void
.end method
