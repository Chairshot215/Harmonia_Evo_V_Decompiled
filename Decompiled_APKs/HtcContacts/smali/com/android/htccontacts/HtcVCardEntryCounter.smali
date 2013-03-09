.class Lcom/android/htccontacts/HtcVCardEntryCounter;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Lcom/android/vcard/VCardInterpreter;


# instance fields
.field private mCount:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/htccontacts/HtcVCardEntryCounter;->mCount:I

    return v0
.end method

.method public onEntryEnded()V
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/android/htccontacts/HtcVCardEntryCounter;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/htccontacts/HtcVCardEntryCounter;->mCount:I

    .line 97
    return-void
.end method

.method public onEntryStarted()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onPropertyCreated(Lcom/android/vcard/VCardProperty;)V
    .locals 0
    .parameter "property"

    .prologue
    .line 113
    return-void
.end method

.method public onVCardEnded()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public onVCardStarted()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/HtcVCardEntryCounter;->mCount:I

    .line 109
    return-void
.end method
