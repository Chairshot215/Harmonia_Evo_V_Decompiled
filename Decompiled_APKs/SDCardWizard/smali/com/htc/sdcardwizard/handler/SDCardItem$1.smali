.class final Lcom/htc/sdcardwizard/handler/SDCardItem$1;
.super Ljava/lang/Object;
.source "SDCardItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdcardwizard/handler/SDCardItem;
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
        "Lcom/htc/sdcardwizard/handler/SDCardItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/sdcardwizard/handler/SDCardItem;Lcom/htc/sdcardwizard/handler/SDCardItem;)I
    .locals 5
    .parameter "item1"
    .parameter "item2"

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, res:I
    #getter for: Lcom/htc/sdcardwizard/handler/SDCardItem;->size:J
    invoke-static {p2}, Lcom/htc/sdcardwizard/handler/SDCardItem;->access$000(Lcom/htc/sdcardwizard/handler/SDCardItem;)J

    move-result-wide v1

    #getter for: Lcom/htc/sdcardwizard/handler/SDCardItem;->size:J
    invoke-static {p1}, Lcom/htc/sdcardwizard/handler/SDCardItem;->access$000(Lcom/htc/sdcardwizard/handler/SDCardItem;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    .line 72
    :cond_0
    #getter for: Lcom/htc/sdcardwizard/handler/SDCardItem;->size:J
    invoke-static {p2}, Lcom/htc/sdcardwizard/handler/SDCardItem;->access$000(Lcom/htc/sdcardwizard/handler/SDCardItem;)J

    move-result-wide v1

    #getter for: Lcom/htc/sdcardwizard/handler/SDCardItem;->size:J
    invoke-static {p1}, Lcom/htc/sdcardwizard/handler/SDCardItem;->access$000(Lcom/htc/sdcardwizard/handler/SDCardItem;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 73
    const/4 v0, -0x1

    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    check-cast p1, Lcom/htc/sdcardwizard/handler/SDCardItem;

    .end local p1
    check-cast p2, Lcom/htc/sdcardwizard/handler/SDCardItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/sdcardwizard/handler/SDCardItem$1;->compare(Lcom/htc/sdcardwizard/handler/SDCardItem;Lcom/htc/sdcardwizard/handler/SDCardItem;)I

    move-result v0

    return v0
.end method
