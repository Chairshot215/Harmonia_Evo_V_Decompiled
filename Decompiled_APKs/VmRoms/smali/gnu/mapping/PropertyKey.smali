.class public Lgnu/mapping/PropertyKey;
.super Ljava/lang/Object;
.source "PropertyKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 10
    .local p0, this:Lgnu/mapping/PropertyKey;,"Lgnu/mapping/PropertyKey<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lgnu/mapping/PropertyKey;->name:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final get(Lgnu/mapping/PropertySet;)Ljava/lang/Object;
    .locals 1
    .parameter "container"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/mapping/PropertySet;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Lgnu/mapping/PropertyKey;,"Lgnu/mapping/PropertyKey<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/mapping/PropertyKey;->get(Lgnu/mapping/PropertySet;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lgnu/mapping/PropertySet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "container"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/mapping/PropertySet;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, this:Lgnu/mapping/PropertyKey;,"Lgnu/mapping/PropertyKey<TT;>;"
    .local p2, defaultValue:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1, p0, p2}, Lgnu/mapping/PropertySet;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Lgnu/mapping/PropertySet;Ljava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/mapping/PropertySet;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, this:Lgnu/mapping/PropertyKey;,"Lgnu/mapping/PropertyKey<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1, p0, p2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    return-void
.end method
