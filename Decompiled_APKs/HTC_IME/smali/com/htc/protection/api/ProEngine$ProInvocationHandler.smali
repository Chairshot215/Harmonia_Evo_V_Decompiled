.class public abstract Lcom/htc/protection/api/ProEngine$ProInvocationHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protection/api/ProEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "ProInvocationHandler"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/protection/api/ProEngine$ProInvocationHandler;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method abstract load()V
.end method

.method abstract unload()V
.end method
