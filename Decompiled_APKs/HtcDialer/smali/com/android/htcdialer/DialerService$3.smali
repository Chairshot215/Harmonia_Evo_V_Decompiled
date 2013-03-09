.class final Lcom/android/htcdialer/DialerService$3;
.super Ljava/lang/Object;
.source "DialerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/DialerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/htcdialer/search/SearchableContact;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/htcdialer/search/SearchableContact;Lcom/android/htcdialer/search/SearchableContact;)I
    .locals 3
    .parameter "c1"
    .parameter "c2"

    .prologue
    const/4 v2, 0x0

    .line 183
    iget v0, p1, Lcom/android/htcdialer/search/SearchableContact;->sectionIndex:I

    iget v1, p2, Lcom/android/htcdialer/search/SearchableContact;->sectionIndex:I

    if-ne v0, v1, :cond_4

    .line 184
    iget-object v0, p1, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p1, Lcom/android/htcdialer/search/SearchableContact;->sortKey:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/htcdialer/search/SearchableContact;->sortKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 196
    :goto_0
    return v0

    .line 186
    :cond_0
    iget-object v0, p1, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    iget v0, p1, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v0, :cond_1

    iget v0, p2, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v0, :cond_1

    .line 188
    iget-object v0, p1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 190
    :cond_1
    iget v0, p1, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    iget v1, p2, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p1, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 196
    :cond_4
    iget v0, p1, Lcom/android/htcdialer/search/SearchableContact;->sectionIndex:I

    iget v1, p2, Lcom/android/htcdialer/search/SearchableContact;->sectionIndex:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    check-cast p1, Lcom/android/htcdialer/search/SearchableContact;

    .end local p1
    check-cast p2, Lcom/android/htcdialer/search/SearchableContact;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htcdialer/DialerService$3;->compare(Lcom/android/htcdialer/search/SearchableContact;Lcom/android/htcdialer/search/SearchableContact;)I

    move-result v0

    return v0
.end method
