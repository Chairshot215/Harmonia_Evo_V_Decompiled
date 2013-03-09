.class final Lcom/android/htcdialer/HtcCountryCodePicker$1;
.super Ljava/lang/Object;
.source "HtcCountryCodePicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/HtcCountryCodePicker;
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
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    check-cast p1, Ljava/util/HashMap;

    .end local p1
    check-cast p2, Ljava/util/HashMap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htcdialer/HtcCountryCodePicker$1;->compare(Ljava/util/HashMap;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/HashMap;Ljava/util/HashMap;)I
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, m1:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, m2:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v6, 0x0

    .line 231
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 233
    const-string v4, "mcc"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 234
    .local v2, mcc1:Ljava/lang/String;
    const-string v4, "mcc"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 236
    .local v3, mcc2:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$600()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/htcdialer/assist/CountryTable;->containValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 268
    .end local v2           #mcc1:Ljava/lang/String;
    .end local v3           #mcc2:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 238
    .restart local v2       #mcc1:Ljava/lang/String;
    .restart local v3       #mcc2:Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$600()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/htcdialer/assist/CountryTable;->containValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v0

    .line 239
    goto :goto_0

    .line 242
    :cond_2
    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$800()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/htcdialer/assist/CountryTable;->containValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 244
    :cond_3
    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$800()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/htcdialer/assist/CountryTable;->containValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v0

    .line 245
    goto :goto_0

    .line 249
    :cond_4
    const-string v4, "section"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "section"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    .line 250
    .local v1, compareSection:I
    if-nez v1, :cond_0

    .line 256
    const-string v4, "name"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const-string v4, "name"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int v0, v5, v4

    .line 257
    .local v0, compareFirstChar:I
    if-eqz v0, :cond_5

    move v1, v0

    .line 258
    goto :goto_0

    .line 262
    :cond_5
    const-string v4, "sort"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "sort"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .end local v0           #compareFirstChar:I
    .end local v1           #compareSection:I
    .end local v2           #mcc1:Ljava/lang/String;
    .end local v3           #mcc2:Ljava/lang/String;
    :cond_6
    move v1, v6

    .line 268
    goto :goto_0
.end method
