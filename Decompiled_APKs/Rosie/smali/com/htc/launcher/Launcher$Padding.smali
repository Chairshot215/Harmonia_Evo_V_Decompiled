.class Lcom/htc/launcher/Launcher$Padding;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Padding"
.end annotation


# instance fields
.field m_nBottom:I

.field m_nLeft:I

.field m_nRight:I

.field m_nTop:I

.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 9712
    iput-object p1, p0, Lcom/htc/launcher/Launcher$Padding;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9713
    iput v0, p0, Lcom/htc/launcher/Launcher$Padding;->m_nLeft:I

    .line 9714
    iput v0, p0, Lcom/htc/launcher/Launcher$Padding;->m_nRight:I

    .line 9715
    iput v0, p0, Lcom/htc/launcher/Launcher$Padding;->m_nTop:I

    .line 9716
    iput v0, p0, Lcom/htc/launcher/Launcher$Padding;->m_nBottom:I

    return-void
.end method
