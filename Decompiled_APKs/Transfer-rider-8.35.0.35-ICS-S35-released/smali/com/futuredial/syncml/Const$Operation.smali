.class public final Lcom/futuredial/syncml/Const$Operation;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/syncml/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Operation"
.end annotation


# static fields
.field public static final ADD:I = 0x1

.field public static final DELETE:I = 0x2

.field public static final NONE:I = 0x0

.field public static final REPLACE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/futuredial/syncml/Const;


# direct methods
.method public constructor <init>(Lcom/futuredial/syncml/Const;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    iput-object p1, p0, Lcom/futuredial/syncml/Const$Operation;->this$0:Lcom/futuredial/syncml/Const;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
