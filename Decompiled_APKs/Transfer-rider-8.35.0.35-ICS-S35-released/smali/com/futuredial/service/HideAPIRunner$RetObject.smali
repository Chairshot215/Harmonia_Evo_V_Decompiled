.class public Lcom/futuredial/service/HideAPIRunner$RetObject;
.super Ljava/lang/Object;
.source "HideAPIRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/service/HideAPIRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetObject"
.end annotation


# instance fields
.field m_ret:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "o"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/futuredial/service/HideAPIRunner$RetObject;->m_ret:Ljava/lang/Object;

    return-void
.end method
