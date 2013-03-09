.class Lcom/htc/android/mail/server/ImapServer$StringComparator;
.super Ljava/lang/Object;
.source "ImapServer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/server/ImapServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StringComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/server/ImapServer;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/server/ImapServer;)V
    .locals 0
    .parameter

    .prologue
    .line 5593
    iput-object p1, p0, Lcom/htc/android/mail/server/ImapServer$StringComparator;->this$0:Lcom/htc/android/mail/server/ImapServer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5593
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/server/ImapServer$StringComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "str1"
    .parameter "str2"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 5595
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    move v0, v2

    .line 5607
    :cond_0
    :goto_0
    return v0

    .line 5598
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 5599
    goto :goto_0

    .line 5601
    :cond_2
    if-eqz p2, :cond_0

    .line 5604
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    .line 5605
    goto :goto_0

    .line 5607
    :cond_3
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
