.class final Lcom/android/htcdialer/DialerService$2;
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
        "Lcom/android/htcdialer/search/SearchableCallLog;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/htcdialer/search/SearchableCallLog;Lcom/android/htcdialer/search/SearchableCallLog;)I
    .locals 8
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v2, -0x1

    .line 144
    iget v4, p1, Lcom/android/htcdialer/search/SearchableCallLog;->count:I

    iget v5, p2, Lcom/android/htcdialer/search/SearchableCallLog;->count:I

    if-ne v4, v5, :cond_7

    .line 148
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/search/SearchableContact;

    .line 149
    .local v0, c1:Lcom/android/htcdialer/search/SearchableContact;
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v4

    iget-wide v5, p2, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableContact;

    .line 150
    .local v1, c2:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 152
    iget v4, v0, Lcom/android/htcdialer/search/SearchableContact;->sectionIndex:I

    iget v5, v1, Lcom/android/htcdialer/search/SearchableContact;->sectionIndex:I

    if-ne v4, v5, :cond_4

    .line 153
    iget-object v4, v0, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 154
    iget-object v2, v0, Lcom/android/htcdialer/search/SearchableContact;->sortKey:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/htcdialer/search/SearchableContact;->sortKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    .line 175
    .end local v0           #c1:Lcom/android/htcdialer/search/SearchableContact;
    .end local v1           #c2:Lcom/android/htcdialer/search/SearchableContact;
    :cond_0
    :goto_0
    return v2

    .line 155
    .restart local v0       #c1:Lcom/android/htcdialer/search/SearchableContact;
    .restart local v1       #c2:Lcom/android/htcdialer/search/SearchableContact;
    :cond_1
    iget-object v4, v0, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 156
    iget v2, v0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v2, :cond_2

    iget v2, v1, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v2, :cond_2

    .line 157
    iget-object v2, v0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 159
    :cond_2
    iget v2, v0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    iget v3, v1, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 162
    :cond_3
    iget-object v4, v0, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 165
    :cond_4
    iget v2, v0, Lcom/android/htcdialer/search/SearchableContact;->sectionIndex:I

    iget v3, v1, Lcom/android/htcdialer/search/SearchableContact;->sectionIndex:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 167
    :cond_5
    if-nez v0, :cond_6

    if-nez v1, :cond_6

    .line 169
    iget-object v2, p1, Lcom/android/htcdialer/search/SearchableCallLog;->number:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/htcdialer/search/SearchableCallLog;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 172
    :cond_6
    if-eqz v0, :cond_0

    move v2, v3

    goto :goto_0

    .line 175
    .end local v0           #c1:Lcom/android/htcdialer/search/SearchableContact;
    .end local v1           #c2:Lcom/android/htcdialer/search/SearchableContact;
    :cond_7
    iget v2, p2, Lcom/android/htcdialer/search/SearchableCallLog;->count:I

    iget v3, p1, Lcom/android/htcdialer/search/SearchableCallLog;->count:I

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    check-cast p1, Lcom/android/htcdialer/search/SearchableCallLog;

    .end local p1
    check-cast p2, Lcom/android/htcdialer/search/SearchableCallLog;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htcdialer/DialerService$2;->compare(Lcom/android/htcdialer/search/SearchableCallLog;Lcom/android/htcdialer/search/SearchableCallLog;)I

    move-result v0

    return v0
.end method
