.class final Lcom/android/htccontacts/ui/ContactsPreferencesActivity$9;
.super Ljava/lang/Object;
.source "ContactsPreferencesActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/ContactsPreferencesActivity;
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
        "Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1261
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;)I
    .locals 9
    .parameter "object1"
    .parameter "object2"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 1263
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 1264
    .local v0, id1:Ljava/lang/Long;
    invoke-virtual {p2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 1265
    .local v1, id2:Ljava/lang/Long;
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 1276
    :cond_0
    :goto_0
    return v2

    .line 1267
    :cond_1
    if-nez v0, :cond_2

    move v2, v3

    .line 1268
    goto :goto_0

    .line 1269
    :cond_2
    if-nez v1, :cond_3

    move v2, v4

    .line 1270
    goto :goto_0

    .line 1271
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_4

    move v2, v3

    .line 1272
    goto :goto_0

    .line 1273
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-lez v3, :cond_0

    move v2, v4

    .line 1274
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1261
    check-cast p1, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;

    .end local p1
    check-cast p2, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$9;->compare(Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;)I

    move-result v0

    return v0
.end method
