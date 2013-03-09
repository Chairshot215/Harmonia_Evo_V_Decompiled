.class public Lcom/htc/android/locationpicker/IconListAdapter$IconListItem;
.super Ljava/lang/Object;
.source "IconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/locationpicker/IconListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconListItem"
.end annotation


# instance fields
.field private final mIconID:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "title"
    .parameter "iconID"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/htc/android/locationpicker/IconListAdapter$IconListItem;->mTitle:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcom/htc/android/locationpicker/IconListAdapter$IconListItem;->mIconID:I

    .line 54
    return-void
.end method


# virtual methods
.method public getIconID()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/android/locationpicker/IconListAdapter$IconListItem;->mIconID:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/android/locationpicker/IconListAdapter$IconListItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
