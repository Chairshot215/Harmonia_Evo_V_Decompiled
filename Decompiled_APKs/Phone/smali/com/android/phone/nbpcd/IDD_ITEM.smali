.class public Lcom/android/phone/nbpcd/IDD_ITEM;
.super Ljava/lang/Object;
.source "IDD_ITEM.java"


# instance fields
.field mCurrentUsage:Z

.field mEditable:Z

.field mIDD:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "IDD"

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/android/phone/nbpcd/IDD_ITEM;->mCurrentUsage:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/phone/nbpcd/IDD_ITEM;->mEditable:Z

    .line 15
    iput-object p1, p0, Lcom/android/phone/nbpcd/IDD_ITEM;->mIDD:Ljava/lang/String;

    .line 16
    iput-boolean v0, p0, Lcom/android/phone/nbpcd/IDD_ITEM;->mCurrentUsage:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/phone/nbpcd/IDD_ITEM;->mEditable:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "IDD"
    .parameter "currentUsage"
    .parameter "editable"

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/android/phone/nbpcd/IDD_ITEM;->mCurrentUsage:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/phone/nbpcd/IDD_ITEM;->mEditable:Z

    .line 21
    iput-object p1, p0, Lcom/android/phone/nbpcd/IDD_ITEM;->mIDD:Ljava/lang/String;

    .line 22
    iput-boolean p2, p0, Lcom/android/phone/nbpcd/IDD_ITEM;->mCurrentUsage:Z

    .line 23
    iput-boolean p3, p0, Lcom/android/phone/nbpcd/IDD_ITEM;->mEditable:Z

    .line 24
    return-void
.end method


# virtual methods
.method public getIDD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/nbpcd/IDD_ITEM;->mIDD:Ljava/lang/String;

    return-object v0
.end method

.method public isCurrentUsage()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/phone/nbpcd/IDD_ITEM;->mCurrentUsage:Z

    return v0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/phone/nbpcd/IDD_ITEM;->mEditable:Z

    return v0
.end method

.method public setCurrentUsage(Z)V
    .locals 0
    .parameter "currentUsage"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/phone/nbpcd/IDD_ITEM;->mCurrentUsage:Z

    .line 28
    return-void
.end method

.method public setEditable(Z)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/phone/nbpcd/IDD_ITEM;->mEditable:Z

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/nbpcd/IDD_ITEM;->mIDD:Ljava/lang/String;

    return-object v0
.end method
