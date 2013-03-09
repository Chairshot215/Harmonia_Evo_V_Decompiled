.class public Lgov/nist/javax/sip/address/NetObjectList;
.super Lgov/nist/core/GenericObjectList;
.source "NetObjectList.java"


# static fields
.field private static final serialVersionUID:J = -0x1589083c1870e7afL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgov/nist/core/GenericObjectList;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lgov/nist/core/GenericObjectList;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lgov/nist/core/GenericObjectList;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public add(Lgov/nist/javax/sip/address/NetObject;)V
    .locals 0

    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public concatenate(Lgov/nist/javax/sip/address/NetObjectList;)V
    .locals 0

    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->concatenate(Lgov/nist/core/GenericObjectList;)V

    return-void
.end method

.method public debugDump(I)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public first()Lgov/nist/core/GenericObject;
    .locals 1

    invoke-super {p0}, Lgov/nist/core/GenericObjectList;->first()Lgov/nist/core/GenericObject;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/NetObject;

    return-object v0
.end method

.method public next()Lgov/nist/core/GenericObject;
    .locals 1

    invoke-super {p0}, Lgov/nist/core/GenericObjectList;->next()Lgov/nist/core/GenericObject;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/NetObject;

    return-object v0
.end method

.method public next(Ljava/util/ListIterator;)Lgov/nist/core/GenericObject;
    .locals 1

    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->next(Ljava/util/ListIterator;)Lgov/nist/core/GenericObject;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/NetObject;

    return-object v0
.end method

.method public setMyClass(Ljava/lang/Class;)V
    .locals 0

    invoke-super {p0, p1}, Lgov/nist/core/GenericObjectList;->setMyClass(Ljava/lang/Class;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/NetObjectList;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
