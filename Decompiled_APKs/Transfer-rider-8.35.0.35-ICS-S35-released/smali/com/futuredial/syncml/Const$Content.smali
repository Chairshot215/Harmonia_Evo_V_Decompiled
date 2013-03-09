.class public final Lcom/futuredial/syncml/Const$Content;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/syncml/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Content"
.end annotation


# static fields
.field public static final CALENDAR:I = 0x1

.field public static final PHONEBOOK:I = 0x0

.field public static final SMS:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/futuredial/syncml/Const;


# direct methods
.method public constructor <init>(Lcom/futuredial/syncml/Const;)V
    .locals 0
    .parameter

    .prologue
    .line 6
    iput-object p1, p0, Lcom/futuredial/syncml/Const$Content;->this$0:Lcom/futuredial/syncml/Const;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
