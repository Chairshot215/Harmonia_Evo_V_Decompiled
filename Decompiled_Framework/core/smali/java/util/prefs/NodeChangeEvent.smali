.class public Ljava/util/prefs/NodeChangeEvent;
.super Ljava/util/EventObject;
.source "NodeChangeEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6ffaaa71714d271dL


# instance fields
.field private final child:Ljava/util/prefs/Preferences;

.field private final parent:Ljava/util/prefs/Preferences;


# direct methods
.method public constructor <init>(Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ljava/util/prefs/NodeChangeEvent;->parent:Ljava/util/prefs/Preferences;

    iput-object p2, p0, Ljava/util/prefs/NodeChangeEvent;->child:Ljava/util/prefs/Preferences;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/NotSerializableException;

    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/NotSerializableException;

    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getChild()Ljava/util/prefs/Preferences;
    .locals 1

    iget-object v0, p0, Ljava/util/prefs/NodeChangeEvent;->child:Ljava/util/prefs/Preferences;

    return-object v0
.end method

.method public getParent()Ljava/util/prefs/Preferences;
    .locals 1

    iget-object v0, p0, Ljava/util/prefs/NodeChangeEvent;->parent:Ljava/util/prefs/Preferences;

    return-object v0
.end method
