.class public Lcom/htc/launcher/PersonalizeContentProvider$PersonalizeCursor;
.super Landroid/database/MatrixCursor;
.source "PersonalizeContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/PersonalizeContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PersonalizeCursor"
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/htc/launcher/PersonalizeContentProvider;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/PersonalizeContentProvider;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "columnNames"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/htc/launcher/PersonalizeContentProvider$PersonalizeCursor;->this$0:Lcom/htc/launcher/PersonalizeContentProvider;

    .line 236
    invoke-direct {p0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public constructor <init>(Lcom/htc/launcher/PersonalizeContentProvider;[Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "columnNames"
    .parameter "initialCapacity"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/htc/launcher/PersonalizeContentProvider$PersonalizeCursor;->this$0:Lcom/htc/launcher/PersonalizeContentProvider;

    .line 232
    invoke-direct {p0, p2, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 233
    return-void
.end method

.method static synthetic access$000(Lcom/htc/launcher/PersonalizeContentProvider$PersonalizeCursor;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/htc/launcher/PersonalizeContentProvider$PersonalizeCursor;->putExtra(Landroid/os/Bundle;)V

    return-void
.end method

.method private putExtra(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/htc/launcher/PersonalizeContentProvider$PersonalizeCursor;->mBundle:Landroid/os/Bundle;

    .line 246
    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/htc/launcher/PersonalizeContentProvider$PersonalizeCursor;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method
