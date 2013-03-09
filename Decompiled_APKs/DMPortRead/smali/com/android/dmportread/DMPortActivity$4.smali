.class Lcom/android/dmportread/DMPortActivity$4;
.super Ljava/lang/Object;
.source "DMPortActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dmportread/DMPortActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dmportread/DMPortActivity;

.field final synthetic val$atmpContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/dmportread/DMPortActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/dmportread/DMPortActivity$4;->this$0:Lcom/android/dmportread/DMPortActivity;

    iput-object p2, p0, Lcom/android/dmportread/DMPortActivity$4;->val$atmpContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 21
    .parameter "v"

    .prologue
    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dmportread/DMPortActivity$4;->this$0:Lcom/android/dmportread/DMPortActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/android/dmportread/DMPortActivity;->mYesBut:Landroid/widget/Button;
    invoke-static/range {v17 .. v17}, Lcom/android/dmportread/DMPortActivity;->access$400(Lcom/android/dmportread/DMPortActivity;)Landroid/widget/Button;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Button;->isEnabled()Z

    move-result v17

    if-nez v17, :cond_1

    .line 189
    const/4 v11, 0x0

    .line 190
    .local v11, fis:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 191
    .local v4, bis:Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 192
    .local v6, dis:Ljava/io/DataInputStream;
    const/4 v13, -0x1

    .line 193
    .local v13, temp:I
    new-instance v10, Ljava/io/File;

    const-string v17, "/data/data/com.android.dmportread/boot"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v10, file:Ljava/io/File;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v11           #fis:Ljava/io/FileInputStream;
    .local v12, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 197
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .local v5, bis:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 198
    .end local v6           #dis:Ljava/io/DataInputStream;
    .local v7, dis:Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    move-result v13

    .line 199
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 200
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 201
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    move-object v6, v7

    .end local v7           #dis:Ljava/io/DataInputStream;
    .restart local v6       #dis:Ljava/io/DataInputStream;
    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    move-object v11, v12

    .line 206
    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    :goto_0
    const/16 v17, 0x31

    move/from16 v0, v17

    if-eq v13, v0, :cond_0

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dmportread/DMPortActivity$4;->this$0:Lcom/android/dmportread/DMPortActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 208
    .local v9, factory:Landroid/view/LayoutInflater;
    const/high16 v17, 0x7f03

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 209
    .local v15, textEntryView:Landroid/view/View;
    const/high16 v17, 0x7f06

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 210
    .local v3, aEditText:Landroid/widget/EditText;
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dmportread/DMPortActivity$4;->this$0:Lcom/android/dmportread/DMPortActivity;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v18, "Please enter MSL"

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const-string v18, "OK"

    new-instance v19, Lcom/android/dmportread/DMPortActivity$4$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/dmportread/DMPortActivity$4$2;-><init>(Lcom/android/dmportread/DMPortActivity$4;Landroid/widget/EditText;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const-string v18, "Cancel"

    new-instance v19, Lcom/android/dmportread/DMPortActivity$4$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/dmportread/DMPortActivity$4$1;-><init>(Lcom/android/dmportread/DMPortActivity$4;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 354
    .end local v3           #aEditText:Landroid/widget/EditText;
    .end local v9           #factory:Landroid/view/LayoutInflater;
    .end local v15           #textEntryView:Landroid/view/View;
    :goto_1
    return-void

    .line 203
    :catch_0
    move-exception v8

    .line 204
    .local v8, e:Ljava/lang/Exception;
    :goto_2
    const-string v17, "DMPORTC"

    const-string v18, "no value"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    .end local v8           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dmportread/DMPortActivity$4;->this$0:Lcom/android/dmportread/DMPortActivity;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v18, "Problem"

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const-string v18, "Have enabled before"

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const-string v18, "Dismiss"

    new-instance v19, Lcom/android/dmportread/DMPortActivity$4$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/dmportread/DMPortActivity$4$3;-><init>(Lcom/android/dmportread/DMPortActivity$4;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 304
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #dis:Ljava/io/DataInputStream;
    .end local v10           #file:Ljava/io/File;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .end local v13           #temp:I
    :cond_1
    const/4 v11, 0x0

    .line 305
    .restart local v11       #fis:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 306
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 307
    .restart local v6       #dis:Ljava/io/DataInputStream;
    const/4 v13, -0x1

    .line 308
    .restart local v13       #temp:I
    new-instance v10, Ljava/io/File;

    const-string v17, "/data/data/com.android.dmportread/boot"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .restart local v10       #file:Ljava/io/File;
    :try_start_4
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 311
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :try_start_5
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 312
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    :try_start_6
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 313
    .end local v6           #dis:Ljava/io/DataInputStream;
    .restart local v7       #dis:Ljava/io/DataInputStream;
    :try_start_7
    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    move-result v13

    .line 314
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 315
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 316
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move-object v6, v7

    .end local v7           #dis:Ljava/io/DataInputStream;
    .restart local v6       #dis:Ljava/io/DataInputStream;
    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    move-object v11, v12

    .line 321
    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    :goto_3
    const/16 v17, 0x31

    move/from16 v0, v17

    if-ne v13, v0, :cond_2

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dmportread/DMPortActivity$4;->this$0:Lcom/android/dmportread/DMPortActivity;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dmportread/DMPortActivity$4;->this$0:Lcom/android/dmportread/DMPortActivity;

    move-object/from16 v19, v0

    const-class v20, Lcom/android/dmportread/DMCommandService;

    invoke-direct/range {v18 .. v20}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual/range {v17 .. v18}, Lcom/android/dmportread/DMPortActivity;->stopService(Landroid/content/Intent;)Z

    .line 323
    const-string v2, "/data/data/com.android.dmportread/boot"

    .line 325
    .local v2, KeyFile:Ljava/lang/String;
    :try_start_8
    new-instance v16, Ljava/io/FileWriter;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 326
    .local v16, tmpKey:Ljava/io/FileWriter;
    new-instance v14, Ljava/io/BufferedWriter;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 327
    .local v14, tempout:Ljava/io/BufferedWriter;
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v14}, Ljava/io/BufferedWriter;->close()V

    .line 329
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 334
    .end local v14           #tempout:Ljava/io/BufferedWriter;
    .end local v16           #tmpKey:Ljava/io/FileWriter;
    :goto_4
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dmportread/DMPortActivity$4;->this$0:Lcom/android/dmportread/DMPortActivity;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v18, "Success"

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const-string v18, "Diag disabled"

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const-string v18, "Dismiss"

    new-instance v19, Lcom/android/dmportread/DMPortActivity$4$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/dmportread/DMPortActivity$4$4;-><init>(Lcom/android/dmportread/DMPortActivity$4;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 318
    .end local v2           #KeyFile:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 319
    .restart local v8       #e:Ljava/lang/Exception;
    :goto_5
    const-string v17, "DMPORTC"

    const-string v18, "no value"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 331
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v2       #KeyFile:Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 332
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v17, "DMPORTC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "set Key"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 344
    .end local v2           #KeyFile:Ljava/lang/String;
    .end local v8           #e:Ljava/lang/Exception;
    :cond_2
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dmportread/DMPortActivity$4;->this$0:Lcom/android/dmportread/DMPortActivity;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v18, "Problem"

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const-string v18, "Not Enabled"

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const-string v18, "Dismiss"

    new-instance v19, Lcom/android/dmportread/DMPortActivity$4$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/dmportread/DMPortActivity$4$5;-><init>(Lcom/android/dmportread/DMPortActivity$4;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 318
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v8

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v8

    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #dis:Ljava/io/DataInputStream;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #dis:Ljava/io/DataInputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v8

    move-object v6, v7

    .end local v7           #dis:Ljava/io/DataInputStream;
    .restart local v6       #dis:Ljava/io/DataInputStream;
    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 203
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v8

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v8

    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #dis:Ljava/io/DataInputStream;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #dis:Ljava/io/DataInputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v8

    move-object v6, v7

    .end local v7           #dis:Ljava/io/DataInputStream;
    .restart local v6       #dis:Ljava/io/DataInputStream;
    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method
