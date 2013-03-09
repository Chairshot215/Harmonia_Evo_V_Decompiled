.class Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneNumber"
.end annotation


# instance fields
.field private mLabel:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "label"
    .parameter "number"

    .prologue
    .line 16664
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16665
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->mLabel:Ljava/lang/String;

    .line 16666
    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->mNumber:Ljava/lang/String;

    .line 16667
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 16670
    if-ne p0, p1, :cond_1

    .line 16698
    :cond_0
    :goto_0
    return v1

    .line 16672
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 16673
    goto :goto_0

    .line 16674
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 16675
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 16677
    check-cast v0, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;

    .line 16679
    .local v0, other:Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->mLabel:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 16680
    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->mLabel:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 16681
    goto :goto_0

    .line 16682
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->mLabel:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->mLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 16683
    goto :goto_0

    .line 16686
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->mNumber:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 16687
    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->mNumber:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 16688
    goto :goto_0

    .line 16689
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->mNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->mNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 16691
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->mNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->mNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 16692
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->setNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 16695
    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->mNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->mNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 16696
    goto :goto_0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16709
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16706
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 16702
    const/4 v0, 0x0

    return v0
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 16712
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$PhoneNumber;->mNumber:Ljava/lang/String;

    .line 16713
    return-void
.end method
