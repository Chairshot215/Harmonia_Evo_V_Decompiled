.class public Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;
.super Ljava/lang/Object;
.source "SelectContactPhotoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/SelectContactPhotoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field static final Index_Not_Use:I = -0x1

.field static final Type_Album:I = 0xb

.field static final Type_Camera:I = 0xc

.field static final Type_MyContact:I = 0x10

.field static final Type_MyContact_GooglePlus:I = 0x12

.field static final Type_Non_Socialnetwork:I = 0xd

.field static final Type_None:I = 0xa

.field static final Type_Remove:I = 0xf

.field static final Type_Snapbooth:I = 0x11

.field static final Type_Socialnetwork:I = 0xe


# instance fields
.field bmPhoto:Landroid/graphics/Bitmap;

.field nIndexOfType:I

.field nType:I

.field sTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 2
    .parameter "type"
    .parameter "title"
    .parameter "photo"
    .parameter "indexOfType"

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;->nType:I

    .line 101
    iput-object v1, p0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;->sTitle:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;->bmPhoto:Landroid/graphics/Bitmap;

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;->nIndexOfType:I

    .line 106
    iput p1, p0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;->nType:I

    .line 107
    iput-object p2, p0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;->sTitle:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;->bmPhoto:Landroid/graphics/Bitmap;

    .line 109
    iput p4, p0, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;->nIndexOfType:I

    .line 110
    return-void
.end method
