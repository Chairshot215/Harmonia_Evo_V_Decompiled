.class public Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "CheckBoxContactPicker.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/CheckBoxContactPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ListItemAdapter"
.end annotation


# instance fields
.field protected mAlphabet:Ljava/lang/String;

.field protected mIndexer:Landroid/widget/AlphabetIndexer;

.field final synthetic this$0:Lcom/android/htccontacts/CheckBoxContactPicker;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/CheckBoxContactPicker;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "cursor"

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    .line 1021
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 1023
    const v0, 0x1040419

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->mAlphabet:Ljava/lang/String;

    .line 1024
    if-eqz p4, :cond_0

    .line 1025
    new-instance v0, Landroid/widget/AlphabetIndexer;

    iget v1, p1, Lcom/android/htccontacts/CheckBoxContactPicker;->mNameIdx:I

    iget-object v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v0, p4, v1, v2}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    .line 1029
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->mAutoRequery:Z

    .line 1031
    return-void
.end method

.method private updateCheckedItem(Landroid/database/Cursor;)V
    .locals 9
    .parameter "cursor"

    .prologue
    .line 1115
    if-eqz p1, :cond_2

    .line 1116
    iget-object v7, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    iget-object v3, v7, Lcom/android/htccontacts/CheckBoxContactPicker;->mListView:Lcom/htc/widget/HtcListView;

    .line 1117
    .local v3, listView:Lcom/htc/widget/HtcListView;
    iget-object v7, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    #getter for: Lcom/android/htccontacts/CheckBoxContactPicker;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;
    invoke-static {v7}, Lcom/android/htccontacts/CheckBoxContactPicker;->access$300(Lcom/android/htccontacts/CheckBoxContactPicker;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 1118
    .local v0, array:Landroid/util/SparseBooleanArray;
    const/4 v4, 0x0

    .line 1119
    .local v4, position:I
    const-string v7, "_id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1120
    .local v2, idIdx:I
    iget-object v7, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    iget v6, v7, Lcom/android/htccontacts/CheckBoxContactPicker;->mTypeIdx:I

    .line 1123
    .local v6, typeIdx:I
    :goto_0
    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1124
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1125
    .local v1, id:I
    if-ltz v6, :cond_0

    .line 1126
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1127
    .local v5, type:I
    const/16 v7, 0x14

    if-ne v5, v7, :cond_0

    .line 1128
    neg-int v1, v1

    .line 1131
    .end local v5           #type:I
    :cond_0
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1132
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 1134
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1137
    .end local v0           #array:Landroid/util/SparseBooleanArray;
    .end local v1           #id:I
    .end local v2           #idIdx:I
    .end local v3           #listView:Lcom/htc/widget/HtcListView;
    .end local v4           #position:I
    .end local v6           #typeIdx:I
    :cond_2
    return-void
.end method

.method private updateIndexer(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    .line 1185
    new-instance v0, Landroid/widget/AlphabetIndexer;

    iget-object v1, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    iget v1, v1, Lcom/android/htccontacts/CheckBoxContactPicker;->mNameIdx:I

    iget-object v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    .line 1189
    :goto_0
    return-void

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private updatePersonPhoto(Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;Ljava/lang/String;JI)V
    .locals 7
    .parameter "cache"
    .parameter "photoPath"
    .parameter "personId"
    .parameter "type"

    .prologue
    .line 1144
    iget-object v3, p1, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;->bitmap:Landroid/graphics/Bitmap;

    .line 1145
    .local v3, oldBitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 1146
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;->bitmap:Landroid/graphics/Bitmap;

    .line 1149
    :cond_0
    iget-object v4, p1, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;->mPhotoView:Landroid/widget/ImageView;

    .line 1151
    .local v4, photoView:Landroid/widget/ImageView;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1152
    const/16 v5, 0x14

    if-eq p5, v5, :cond_3

    .line 1153
    iget-object v5, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mPhotoUtility:Lcom/android/htccontacts/util/PhotoUtils;
    invoke-static {v5}, Lcom/android/htccontacts/CheckBoxContactPicker;->access$700(Lcom/android/htccontacts/CheckBoxContactPicker;)Lcom/android/htccontacts/util/PhotoUtils;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/android/htccontacts/util/PhotoUtils;->setPhotoDrawableByType(Landroid/widget/ImageView;I)V

    .line 1176
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 1177
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1178
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1181
    :cond_2
    return-void

    .line 1157
    :cond_3
    iget-object v5, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mPhotoUtility:Lcom/android/htccontacts/util/PhotoUtils;
    invoke-static {v5}, Lcom/android/htccontacts/CheckBoxContactPicker;->access$800(Lcom/android/htccontacts/CheckBoxContactPicker;)Lcom/android/htccontacts/util/PhotoUtils;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lcom/android/htccontacts/util/PhotoUtils;->setPhotoDrawableByType(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 1162
    :cond_4
    :try_start_0
    iget-object v5, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mPhotoUtility:Lcom/android/htccontacts/util/PhotoUtils;
    invoke-static {v5}, Lcom/android/htccontacts/CheckBoxContactPicker;->access$900(Lcom/android/htccontacts/CheckBoxContactPicker;)Lcom/android/htccontacts/util/PhotoUtils;

    move-result-object v5

    invoke-virtual {v5, p3, p4, p2}, Lcom/android/htccontacts/util/PhotoUtils;->getContactPhoto(JLjava/lang/String;)Lcom/android/htccontacts/util/PhotoUtils$CacheResult;

    move-result-object v1

    .line 1163
    .local v1, cachedResult:Lcom/android/htccontacts/util/PhotoUtils$CacheResult;
    iget-object v0, v1, Lcom/android/htccontacts/util/PhotoUtils$CacheResult;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 1164
    .local v0, cachedDrawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_1

    .line 1165
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1166
    iget-boolean v5, v1, Lcom/android/htccontacts/util/PhotoUtils$CacheResult;->isCached:Z

    if-nez v5, :cond_1

    .line 1167
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p1, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1170
    .end local v0           #cachedDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #cachedResult:Lcom/android/htccontacts/util/PhotoUtils$CacheResult;
    :catch_0
    move-exception v2

    .line 1171
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v5, "CheckBoxContactPicker"

    const-string v6, "loadContactPhoto: OutOfMemoryError"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1172
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 1173
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "CheckBoxContactPicker"

    const-string v6, "loadContactPhoto: exception"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1050
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;

    .line 1056
    .local v1, cache:Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    iget v0, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mNameIdx:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1057
    .local v9, name:Ljava/lang/String;
    const-string v0, "_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1061
    .local v6, id:I
    const/4 v5, 0x0

    .line 1062
    .local v5, type:I
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    iget v0, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mTypeIdx:I

    if-ltz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    iget v0, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mTypeIdx:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1064
    const/16 v0, 0x14

    if-ne v5, v0, :cond_0

    .line 1065
    neg-int v6, v6

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    #getter for: Lcom/android/htccontacts/CheckBoxContactPicker;->mCacheBooleanArray:Landroid/util/SparseBooleanArray;
    invoke-static {v0}, Lcom/android/htccontacts/CheckBoxContactPicker;->access$300(Lcom/android/htccontacts/CheckBoxContactPicker;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    .line 1071
    .local v7, isCheck:Z
    iget-object v0, v1, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1082
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    iget v0, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mPhotoPathIdx:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1083
    .local v2, path:Ljava/lang/String;
    int-to-long v3, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->updatePersonPhoto(Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;Ljava/lang/String;JI)V

    .line 1086
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1087
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    iget-object v0, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mUnNamed:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    iget-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    const v4, 0x7f0a0241

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/CheckBoxContactPicker;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mUnNamed:Ljava/lang/String;

    .line 1090
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    iget-object v9, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mUnNamed:Ljava/lang/String;

    .line 1091
    iget-object v0, v1, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1104
    :goto_0
    return-void

    .line 1095
    :cond_2
    move-object v8, v9

    .line 1096
    .local v8, markStr:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    #getter for: Lcom/android/htccontacts/CheckBoxContactPicker;->mFilterString:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/htccontacts/CheckBoxContactPicker;->access$400(Lcom/android/htccontacts/CheckBoxContactPicker;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1097
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    #getter for: Lcom/android/htccontacts/CheckBoxContactPicker;->mFilterString:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/htccontacts/CheckBoxContactPicker;->access$400(Lcom/android/htccontacts/CheckBoxContactPicker;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    #getter for: Lcom/android/htccontacts/CheckBoxContactPicker;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;
    invoke-static {v3}, Lcom/android/htccontacts/CheckBoxContactPicker;->access$500(Lcom/android/htccontacts/CheckBoxContactPicker;)Landroid/text/style/BackgroundColorSpan;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    #getter for: Lcom/android/htccontacts/CheckBoxContactPicker;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;
    invoke-static {v4}, Lcom/android/htccontacts/CheckBoxContactPicker;->access$600(Lcom/android/htccontacts/CheckBoxContactPicker;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v4

    invoke-static {v9, v0, v3, v4}, Lcom/android/htccontacts/util/ContactsUtils;->generateMarkedCharSequence(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/ForegroundColorSpan;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1099
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1100
    move-object v8, v9

    .line 1102
    :cond_4
    iget-object v0, v1, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 1108
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1110
    invoke-direct {p0, p1}, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 1111
    invoke-direct {p0, p1}, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->updateCheckedItem(Landroid/database/Cursor;)V

    .line 1112
    return-void
.end method

.method public getItemId(I)J
    .locals 6
    .parameter "position"

    .prologue
    const-wide/16 v3, 0x0

    .line 1222
    invoke-virtual {p0}, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1223
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 1233
    :cond_0
    :goto_0
    return-wide v3

    .line 1225
    :cond_1
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1227
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1228
    .local v1, id:I
    iget-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    iget v3, v3, Lcom/android/htccontacts/CheckBoxContactPicker;->mTypeIdx:I

    if-ltz v3, :cond_2

    .line 1229
    iget-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    iget v3, v3, Lcom/android/htccontacts/CheckBoxContactPicker;->mTypeIdx:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1230
    .local v2, type:I
    const/16 v3, 0x14

    if-ne v2, v3, :cond_2

    .line 1231
    neg-int v1, v1

    .line 1233
    .end local v2           #type:I
    :cond_2
    int-to-long v3, v1

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 4
    .parameter "sectionIndex"

    .prologue
    .line 1200
    iget-object v1, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v1, :cond_1

    .line 1201
    invoke-virtual {p0}, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1202
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1204
    const/4 v1, 0x0

    .line 1209
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_0
    return v1

    .line 1206
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_0
    new-instance v1, Landroid/widget/AlphabetIndexer;

    iget-object v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    iget v2, v2, Lcom/android/htccontacts/CheckBoxContactPicker;->mNameIdx:I

    iget-object v3, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    .line 1209
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v1, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1213
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1035
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1036
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;

    invoke-direct {v0}, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;-><init>()V

    .line 1037
    .local v0, cache:Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;
    const v2, 0x7f070067

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;->checkbox:Landroid/widget/CheckBox;

    .line 1038
    iget-object v2, v0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;->checkbox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    iget-boolean v2, v2, Lcom/android/htccontacts/CheckBoxContactPicker;->mIsRemove:Z

    if-eqz v2, :cond_0

    .line 1039
    iget-object v2, v0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;->checkbox:Landroid/widget/CheckBox;

    const v3, 0x2080014

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 1042
    :cond_0
    const v2, 0x7f070065

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;->mPhotoView:Landroid/widget/ImageView;

    .line 1043
    const v2, 0x7f070066

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;->mNameView:Landroid/widget/TextView;

    .line 1044
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1045
    return-object v1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 2
    .parameter "constraint"

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$ListItemAdapter;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/htccontacts/CheckBoxContactPicker;->doFilter(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/android/htccontacts/CheckBoxContactPicker;->access$1000(Lcom/android/htccontacts/CheckBoxContactPicker;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
