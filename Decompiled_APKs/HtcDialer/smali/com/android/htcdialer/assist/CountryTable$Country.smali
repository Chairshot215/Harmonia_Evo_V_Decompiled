.class public Lcom/android/htcdialer/assist/CountryTable$Country;
.super Ljava/util/HashMap;
.source "CountryTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/assist/CountryTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Country"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mLocale:Ljava/util/Locale;

.field final synthetic this$0:Lcom/android/htcdialer/assist/CountryTable;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/assist/CountryTable;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/htcdialer/assist/CountryTable$Country;->this$0:Lcom/android/htcdialer/assist/CountryTable;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htcdialer/assist/CountryTable$Country;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 76
    const-string v0, "code"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/htcdialer/assist/CountryTable$Country;->mLocale:Ljava/util/Locale;

    .line 79
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public updateDisplayName()V
    .locals 4

    .prologue
    .line 83
    iget-object v2, p0, Lcom/android/htcdialer/assist/CountryTable$Country;->mLocale:Ljava/util/Locale;

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/android/htcdialer/assist/CountryTable$Country;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, display:Ljava/lang/String;
    const-string v2, "name"

    invoke-virtual {p0, v2, v0}, Lcom/android/htcdialer/assist/CountryTable$Country;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    #calls: Lcom/android/htcdialer/assist/CountryTable;->extractSortKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/htcdialer/assist/CountryTable;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, sort:Ljava/lang/String;
    const-string v2, "sort"

    invoke-virtual {p0, v2, v1}, Lcom/android/htcdialer/assist/CountryTable$Country;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    const-string v2, "section"

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/htcdialer/assist/CountryTable$Country;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .end local v0           #display:Ljava/lang/String;
    .end local v1           #sort:Ljava/lang/String;
    :cond_0
    return-void
.end method
