.class public Lgnu/mapping/LocationProc;
.super Lgnu/mapping/Procedure0or1;
.source "LocationProc.java"

# interfaces
.implements Lgnu/mapping/HasSetter;


# instance fields
.field loc:Lgnu/mapping/Location;


# direct methods
.method public constructor <init>(Lgnu/mapping/Location;)V
    .locals 0
    .parameter "loc"

    .prologue
    .line 15
    invoke-direct {p0}, Lgnu/mapping/Procedure0or1;-><init>()V

    .line 16
    iput-object p1, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    .line 17
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Location;Lgnu/mapping/Procedure;)V
    .locals 0
    .parameter "loc"
    .parameter "converter"

    .prologue
    .line 27
    invoke-direct {p0}, Lgnu/mapping/Procedure0or1;-><init>()V

    .line 28
    iput-object p1, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    .line 29
    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {p0, p2}, Lgnu/mapping/LocationProc;->pushConverter(Lgnu/mapping/Procedure;)V

    .line 31
    :cond_0
    return-void
.end method

.method public static makeNamed(Lgnu/mapping/Symbol;Lgnu/mapping/Location;)Lgnu/mapping/LocationProc;
    .locals 1
    .parameter "name"
    .parameter "loc"

    .prologue
    .line 21
    new-instance v0, Lgnu/mapping/LocationProc;

    invoke-direct {v0, p1}, Lgnu/mapping/LocationProc;-><init>(Lgnu/mapping/Location;)V

    .line 22
    .local v0, lproc:Lgnu/mapping/LocationProc;
    invoke-virtual {v0, p0}, Lgnu/mapping/LocationProc;->setSymbol(Ljava/lang/Object;)V

    .line 23
    return-object v0
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lgnu/mapping/LocationProc;->set0(Ljava/lang/Object;)V

    .line 46
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method

.method public final getLocation()Lgnu/mapping/Location;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    return-object v0
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lgnu/mapping/Setter0;

    invoke-direct {v0, p0}, Lgnu/mapping/Setter0;-><init>(Lgnu/mapping/Procedure;)V

    return-object v0
.end method

.method public pushConverter(Lgnu/mapping/Procedure;)V
    .locals 1
    .parameter "converter"

    .prologue
    .line 35
    iget-object v0, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    invoke-static {v0, p1}, Lgnu/mapping/ConstrainedLocation;->make(Lgnu/mapping/Location;Lgnu/mapping/Procedure;)Lgnu/mapping/ConstrainedLocation;

    move-result-object v0

    iput-object v0, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    .line 36
    return-void
.end method

.method public set0(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lgnu/mapping/LocationProc;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    .line 67
    .local v0, n:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 68
    invoke-super {p0}, Lgnu/mapping/Procedure0or1;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#<location-proc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
