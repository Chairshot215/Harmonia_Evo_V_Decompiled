.class Lcom/futuredial/ui/ListItem;
.super Ljava/lang/Object;
.source "CMultiCheckHandle.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/futuredial/ui/ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field index:Ljava/lang/Integer;

.field itemName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .parameter "i"
    .parameter "n"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/futuredial/ui/ListItem;->index:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/futuredial/ui/ListItem;->itemName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/futuredial/ui/ListItem;)I
    .locals 2
    .parameter "arg0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/futuredial/ui/ListItem;->index:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/futuredial/ui/ListItem;->index:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    check-cast p1, Lcom/futuredial/ui/ListItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/futuredial/ui/ListItem;->compareTo(Lcom/futuredial/ui/ListItem;)I

    move-result v0

    return v0
.end method
