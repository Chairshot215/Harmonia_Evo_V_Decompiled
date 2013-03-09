.class Lcom/android/ex/chips/RecipientChip;
.super Landroid/text/style/ImageSpan;
.source "RecipientChip.java"


# instance fields
.field private final mContactId:J

.field private final mDataId:J

.field private final mDisplay:Ljava/lang/CharSequence;

.field private mEntry:Lcom/android/ex/chips/RecipientEntry;

.field private mOriginalText:Ljava/lang/CharSequence;

.field private mSelected:Z

.field private final mValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/android/ex/chips/RecipientEntry;I)V
    .locals 2
    .parameter "drawable"
    .parameter "entry"
    .parameter "offset"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 39
    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientChip;->mSelected:Z

    .line 45
    invoke-virtual {p2}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientChip;->mDisplay:Ljava/lang/CharSequence;

    .line 46
    invoke-virtual {p2}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientChip;->mValue:Ljava/lang/CharSequence;

    .line 47
    invoke-virtual {p2}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ex/chips/RecipientChip;->mContactId:J

    .line 48
    invoke-virtual {p2}, Lcom/android/ex/chips/RecipientEntry;->getDataId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ex/chips/RecipientChip;->mDataId:J

    .line 49
    iput-object p2, p0, Lcom/android/ex/chips/RecipientChip;->mEntry:Lcom/android/ex/chips/RecipientEntry;

    .line 50
    return-void
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/android/ex/chips/RecipientChip;->mContactId:J

    return-wide v0
.end method

.method public getDataId()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/android/ex/chips/RecipientChip;->mDataId:J

    return-wide v0
.end method

.method public getEntry()Lcom/android/ex/chips/RecipientEntry;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/ex/chips/RecipientChip;->mEntry:Lcom/android/ex/chips/RecipientEntry;

    return-object v0
.end method

.method public getOriginalText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/ex/chips/RecipientChip;->mOriginalText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientChip;->mOriginalText:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientChip;->mEntry:Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/ex/chips/RecipientChip;->mValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientChip;->mSelected:Z

    return v0
.end method

.method public setOriginalText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/android/ex/chips/RecipientChip;->mOriginalText:Ljava/lang/CharSequence;

    .line 107
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/ex/chips/RecipientChip;->mSelected:Z

    .line 58
    return-void
.end method
