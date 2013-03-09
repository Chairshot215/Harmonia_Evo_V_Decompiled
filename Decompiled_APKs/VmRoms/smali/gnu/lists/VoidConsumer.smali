.class public Lgnu/lists/VoidConsumer;
.super Lgnu/lists/FilterConsumer;
.source "VoidConsumer.java"


# static fields
.field public static instance:Lgnu/lists/VoidConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lgnu/lists/VoidConsumer;

    invoke-direct {v0}, Lgnu/lists/VoidConsumer;-><init>()V

    sput-object v0, Lgnu/lists/VoidConsumer;->instance:Lgnu/lists/VoidConsumer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/lists/VoidConsumer;->skipping:Z

    .line 18
    return-void
.end method

.method public static getInstance()Lgnu/lists/VoidConsumer;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lgnu/lists/VoidConsumer;->instance:Lgnu/lists/VoidConsumer;

    return-object v0
.end method


# virtual methods
.method public ignoring()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method
