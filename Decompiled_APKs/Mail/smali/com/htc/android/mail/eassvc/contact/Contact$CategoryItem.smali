.class Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/contact/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CategoryItem"
.end annotation


# instance fields
.field backRefId:I

.field id:I

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->backRefId:I

    return-void
.end method

.method static findCategory(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;
    .locals 3
    .parameter
    .parameter "category"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;

    .line 63
    .local v1, item:Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    .end local v1           #item:Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "anObject"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 43
    if-ne p0, p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v2

    .line 46
    :cond_1
    instance-of v4, p1, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;

    if-eqz v4, :cond_5

    .line 47
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->name:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 48
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->name:Ljava/lang/String;

    if-eq p1, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 50
    check-cast v0, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;

    .line 51
    .local v0, obj:Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;
    iget v4, p0, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->id:I

    iget v5, v0, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->id:I

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    move v2, v3

    goto :goto_0

    .line 52
    .end local v0           #obj:Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;
    :cond_5
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_7

    move-object v1, p1

    .line 53
    check-cast v1, Ljava/lang/String;

    .line 54
    .local v1, str:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->name:Ljava/lang/String;

    if-nez v3, :cond_6

    if-eqz v1, :cond_0

    .line 56
    :cond_6
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/contact/Contact$CategoryItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .end local v1           #str:Ljava/lang/String;
    :cond_7
    move v2, v3

    .line 58
    goto :goto_0
.end method
