.class Leu/chainfire/supersu/Settings$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Leu/chainfire/supersu/Settings$App;

    check-cast p2, Leu/chainfire/supersu/Settings$App;

    iget-object v0, p1, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    iget-object v1, p2, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
