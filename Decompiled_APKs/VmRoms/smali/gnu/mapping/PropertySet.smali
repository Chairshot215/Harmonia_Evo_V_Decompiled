.class public abstract Lgnu/mapping/PropertySet;
.super Ljava/lang/Object;
.source "PropertySet.java"

# interfaces
.implements Lgnu/mapping/Named;


# static fields
.field public static final nameKey:Lgnu/mapping/Symbol;


# instance fields
.field private properties:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setProperty([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .parameter "properties"
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    .line 61
    move-object v4, p0

    .line 62
    .local v4, props:[Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 64
    const/16 v5, 0xa

    new-array v4, v5, [Ljava/lang/Object;

    move-object p0, v4

    .line 65
    const/4 v0, 0x0

    .line 90
    .local v0, avail:I
    :cond_0
    :goto_0
    aput-object p1, v4, v0

    .line 91
    add-int/lit8 v5, v0, 0x1

    aput-object p2, v4, v5

    .line 92
    :goto_1
    return-object p0

    .line 69
    .end local v0           #avail:I
    :cond_1
    const/4 v0, -0x1

    .line 70
    .restart local v0       #avail:I
    array-length v1, v4

    .local v1, i:I
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_4

    .line 72
    aget-object v2, v4, v1

    .line 73
    .local v2, k:Ljava/lang/Object;
    if-ne v2, p1, :cond_3

    .line 75
    add-int/lit8 v5, v1, 0x1

    aget-object v3, v4, v5

    .line 76
    .local v3, old:Ljava/lang/Object;
    add-int/lit8 v5, v1, 0x1

    aput-object p2, v4, v5

    goto :goto_1

    .line 79
    .end local v3           #old:Ljava/lang/Object;
    :cond_3
    if-nez v2, :cond_2

    .line 80
    move v0, v1

    goto :goto_2

    .line 82
    .end local v2           #k:Ljava/lang/Object;
    :cond_4
    if-gez v0, :cond_0

    .line 84
    array-length v0, v4

    .line 85
    mul-int/lit8 v5, v0, 0x2

    new-array p0, v5, [Ljava/lang/Object;

    .line 86
    invoke-static {v4, v6, p0, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    move-object v4, p0

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12
    sget-object v1, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    invoke-virtual {p0, v1, v2}, Lgnu/mapping/PropertySet;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    .local v0, symbol:Ljava/lang/Object;
    if-nez v0, :cond_0

    move-object v1, v2

    .end local v0           #symbol:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v0       #symbol:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_1

    check-cast v0, Lgnu/mapping/Symbol;

    .end local v0           #symbol:Ljava/lang/Object;
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .restart local v0       #symbol:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 35
    iget-object v1, p0, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 37
    iget-object v1, p0, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    array-length v0, v1

    .local v0, i:I
    :cond_0
    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_1

    .line 39
    iget-object v1, p0, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 40
    iget-object v1, p0, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    .line 43
    .end local v0           #i:I
    :goto_0
    return-object v1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method public getSymbol()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/mapping/PropertySet;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeProperty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    .line 97
    iget-object v3, p0, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    .line 98
    .local v3, props:[Ljava/lang/Object;
    if-nez v3, :cond_0

    move-object v4, v5

    .line 111
    :goto_0
    return-object v4

    .line 100
    :cond_0
    array-length v0, v3

    .local v0, i:I
    :cond_1
    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_2

    .line 102
    aget-object v1, v3, v0

    .line 103
    .local v1, k:Ljava/lang/Object;
    if-ne v1, p1, :cond_1

    .line 105
    add-int/lit8 v4, v0, 0x1

    aget-object v2, v3, v4

    .line 106
    .local v2, old:Ljava/lang/Object;
    aput-object v5, v3, v0

    .line 107
    add-int/lit8 v4, v0, 0x1

    aput-object v5, v3, v4

    move-object v4, v2

    .line 108
    goto :goto_0

    .end local v1           #k:Ljava/lang/Object;
    .end local v2           #old:Ljava/lang/Object;
    :cond_2
    move-object v4, v5

    .line 111
    goto :goto_0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    sget-object v0, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    invoke-virtual {p0, v0, p1}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public declared-synchronized setProperty(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lgnu/mapping/PropertySet;->setProperty([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setSymbol(Ljava/lang/Object;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 25
    sget-object v0, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    invoke-virtual {p0, v0, p1}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    return-void
.end method
