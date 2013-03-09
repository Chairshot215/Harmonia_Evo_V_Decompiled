.class Lcom/futuredial/vxx/VxxParser$SwitchPos;
.super Ljava/lang/Object;
.source "VxxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/vxx/VxxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchPos"
.end annotation


# instance fields
.field public m_iSwitchPos:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/futuredial/vxx/VxxParser;


# direct methods
.method public constructor <init>(Lcom/futuredial/vxx/VxxParser;)V
    .locals 1
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/futuredial/vxx/VxxParser$SwitchPos;->this$0:Lcom/futuredial/vxx/VxxParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/vxx/VxxParser$SwitchPos;->m_iSwitchPos:Ljava/lang/Integer;

    .line 290
    return-void
.end method
