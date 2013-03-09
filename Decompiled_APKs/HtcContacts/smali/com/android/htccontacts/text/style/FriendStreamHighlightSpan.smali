.class public Lcom/android/htccontacts/text/style/FriendStreamHighlightSpan;
.super Landroid/text/style/CharacterStyle;
.source "FriendStreamHighlightSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private final mBackgroundColor:I

.field private final mForegroundColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "bg_color"
    .parameter "fg_color"

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 15
    iput p1, p0, Lcom/android/htccontacts/text/style/FriendStreamHighlightSpan;->mBackgroundColor:I

    .line 16
    iput p2, p0, Lcom/android/htccontacts/text/style/FriendStreamHighlightSpan;->mForegroundColor:I

    .line 17
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "tp"

    .prologue
    .line 21
    iget v0, p0, Lcom/android/htccontacts/text/style/FriendStreamHighlightSpan;->mBackgroundColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 22
    iget v0, p0, Lcom/android/htccontacts/text/style/FriendStreamHighlightSpan;->mForegroundColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 23
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/htccontacts/text/style/FriendStreamHighlightSpan;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    return-void
.end method
