.class public abstract Lgnu/expr/ModuleSet;
.super Ljava/lang/Object;
.source "ModuleSet.java"


# static fields
.field public static final MODULES_MAP:Ljava/lang/String; = "$ModulesMap$"


# instance fields
.field next:Lgnu/expr/ModuleSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract register(Lgnu/expr/ModuleManager;)V
.end method
