.class public Lcom/htc/opensense/plugin/ExteriorListAdapter$ExteriorContextMenuItem;
.super Ljava/lang/Object;
.source "ExteriorListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/plugin/ExteriorListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExteriorContextMenuItem"
.end annotation


# instance fields
.field public itemId:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "title"
    .parameter "itemId"

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p1, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter$ExteriorContextMenuItem;->title:Ljava/lang/CharSequence;

    .line 445
    iput p2, p0, Lcom/htc/opensense/plugin/ExteriorListAdapter$ExteriorContextMenuItem;->itemId:I

    .line 446
    return-void
.end method
