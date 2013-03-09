.class public final Lcom/android/htccontacts/widget/ImPresence;
.super Ljava/lang/Object;
.source "ImPresence.java"


# instance fields
.field private chatCapability:I

.field private hasIm:Z

.field private status:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .parameter "status"
    .parameter "chatCapability"
    .parameter "hasIm"

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/android/htccontacts/widget/ImPresence;->status:I

    .line 13
    iput p2, p0, Lcom/android/htccontacts/widget/ImPresence;->chatCapability:I

    .line 14
    iput-boolean p3, p0, Lcom/android/htccontacts/widget/ImPresence;->hasIm:Z

    .line 15
    return-void
.end method


# virtual methods
.method public getChatCapability()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/android/htccontacts/widget/ImPresence;->chatCapability:I

    return v0
.end method

.method public getPresence()I
    .locals 2

    .prologue
    .line 30
    iget v0, p0, Lcom/android/htccontacts/widget/ImPresence;->chatCapability:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/htccontacts/widget/ImPresence;->chatCapability:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/htccontacts/widget/ImPresence;->chatCapability:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_1

    .line 34
    iget v0, p0, Lcom/android/htccontacts/widget/ImPresence;->status:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 35
    iget v0, p0, Lcom/android/htccontacts/widget/ImPresence;->status:I

    add-int/lit8 v0, v0, 0x5

    .line 39
    :goto_0
    return v0

    .line 37
    :cond_0
    iget v0, p0, Lcom/android/htccontacts/widget/ImPresence;->status:I

    goto :goto_0

    .line 39
    :cond_1
    iget v0, p0, Lcom/android/htccontacts/widget/ImPresence;->status:I

    goto :goto_0
.end method

.method public getRawPresence()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/android/htccontacts/widget/ImPresence;->status:I

    return v0
.end method

.method public hasIm()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/ImPresence;->hasIm:Z

    return v0
.end method
