.class public Lcom/htc/net/wimax/HTCWimax4GConfigurationComparator;
.super Ljava/lang/Object;
.source "HTCWimax4GConfigurationComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/htc/net/FourG/FourGConfiguration;

    move-object v1, p2

    check-cast v1, Lcom/htc/net/FourG/FourGConfiguration;

    iget v2, v0, Lcom/htc/net/FourG/FourGConfiguration;->networkId:I

    iget v3, v1, Lcom/htc/net/FourG/FourGConfiguration;->networkId:I

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    iget v2, v0, Lcom/htc/net/FourG/FourGConfiguration;->networkId:I

    iget v3, v1, Lcom/htc/net/FourG/FourGConfiguration;->networkId:I

    if-ge v2, v3, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
