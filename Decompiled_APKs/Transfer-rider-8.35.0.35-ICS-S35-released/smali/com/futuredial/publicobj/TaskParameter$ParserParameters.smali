.class public Lcom/futuredial/publicobj/TaskParameter$ParserParameters;
.super Ljava/lang/Object;
.source "TaskParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/publicobj/TaskParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParserParameters"
.end annotation


# instance fields
.field public parserClassName:Ljava/lang/String;

.field public parserPolicy:Ljava/lang/String;

.field final synthetic this$0:Lcom/futuredial/publicobj/TaskParameter;


# direct methods
.method public constructor <init>(Lcom/futuredial/publicobj/TaskParameter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 136
    iput-object p1, p0, Lcom/futuredial/publicobj/TaskParameter$ParserParameters;->this$0:Lcom/futuredial/publicobj/TaskParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object v0, p0, Lcom/futuredial/publicobj/TaskParameter$ParserParameters;->parserClassName:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/futuredial/publicobj/TaskParameter$ParserParameters;->parserPolicy:Ljava/lang/String;

    return-void
.end method
