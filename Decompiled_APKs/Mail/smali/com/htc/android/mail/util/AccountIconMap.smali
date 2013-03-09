.class public Lcom/htc/android/mail/util/AccountIconMap;
.super Ljava/lang/Object;
.source "AccountIconMap.java"


# static fields
.field static attachmentIconMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final defaultEmailAppIcon:I = 0x7f020026


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v6, 0x7f020046

    const v5, 0x7f020040

    const v4, 0x7f02003f

    const v3, 0x7f02002e

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/mail/util/AccountIconMap;->attachmentIconMap:Ljava/util/HashMap;

    .line 21
    sget-object v0, Lcom/htc/android/mail/util/AccountIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "Yahoo"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/htc/android/mail/util/AccountIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "MSN"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/htc/android/mail/util/AccountIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "AOL"

    const v2, 0x7f02002d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/htc/android/mail/util/AccountIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "AOL2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/htc/android/mail/util/AccountIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "Google"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/htc/android/mail/util/AccountIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "title:Yahoo"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/htc/android/mail/util/AccountIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "title:MSN"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/htc/android/mail/util/AccountIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "title:AOL"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/htc/android/mail/util/AccountIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v1, "title:Google"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountIconResource(Ljava/lang/String;Z)I
    .locals 3
    .parameter "name"
    .parameter "alternative"

    .prologue
    const v1, 0x7f020026

    .line 36
    if-nez p0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v1

    .line 39
    :cond_1
    sget-object v2, Lcom/htc/android/mail/util/AccountIconMap;->attachmentIconMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 41
    .local v0, resultIconResource:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 45
    const-string v1, "AOL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 46
    sget-object v1, Lcom/htc/android/mail/util/AccountIconMap;->attachmentIconMap:Ljava/util/HashMap;

    const-string v2, "AOL2"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #resultIconResource:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 48
    .restart local v0       #resultIconResource:Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method
