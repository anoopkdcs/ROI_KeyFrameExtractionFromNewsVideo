# ROI & Key Frame Extraction From News Video
## Morphology  Based Text Detection and Extraction from Malayalam  News Videos
Anoop K, Lajish V L </br>
Computational Intelligence and Data Analytics (CIDA Lab) </br>
Department of Computer Science </br>
University of Calicut, India </br>
:memo: [Paper](https://www.researchgate.net/publication/286442060_Morphology_Based_Text_Detection_and_Extraction_from_Malayalam_News_Videos) </br>


**Abstract**: Digital video is an important information source in the modern world. The domain of digital video incl udes cinema, TV programmes, news videos, video lectures and e-contents uploaded in social media. The textual modality available in the video is more semantically related to the content of the videos. This textual information will be used very effectively for the purpose of searching the huge volume of digital video information in a flexible manner. In this paper we propose a morphology base d approach for text detection and extraction from Malayalam news videos. The proposed method includes the selection of key frame image s (which contain textual information) from the input videos and a robust text extraction from the key frame images. The proposed method is found to be working effectively with different size, color and typescript oriented text having complex image backgrounds. Experiments are conducted over the key frames extracted from MPEG-4 compressed news video streams of DD Malayalam, which is a Malayalam satellite channel supported by Doordarshan (India's Public Service broadcaster). The results obtained based on the proposed techniques are very promising and highly beneficial as Kerala is one of the most media centric societies in the world, produces huge amount of digital videos in Malayalam.

### Matlab codes
1. Compute the ROI and key frame extraction ([roi_keyframe.m](matlab-codes/roi_keyframe.m))
2. Word Extraction ([word_extraction.m](matlab-codes/word_extraction.m))
3. Connected Component analysis ([cc.m](matlab-codes/cc.m))

### Sample Dataset 
One minute sample News video ([News_video03.mp4](Sample-DataSet/News_video03.mp4))

## Citation
```
@inproceedings{anoop2014morphology,
  title={Morphology based text detection and extraction from Malayalam news videos},
  author={Anoop, K and Lajish, VL},
  booktitle={National Conference on Indian Language Computing (NCILC), CUSAT, Kochi},
  year={2014}
}
```

### Related works
[1] Manjary P Gangan, Anoop K, Lajish V L "Indexing and retrieval of malayalam news videos based on word image matching." In 2017 International Conference on Advances in Computing, Communications and Informatics (ICACCI), pp. 1103-1108. IEEE, 2017, DOI: 10.1109/ICACCI.2017.8125989. ([Paper](https://ieeexplore.ieee.org/document/8125989)) </br>
[2] Anoop K, Manjary P Gangan, Lajish V. L. "Mathematical Morphology and Region Clustering Based Text Information Extraction from Malayalam News Videos." Advances in Signal Processing and Intelligent Recognition Systems, pp.431-442, Springer, Cham, 2016, DOI 10.1007/978-3-319-28658-7_37. ([Paper](https://link.springer.com/chapter/10.1007/978-3-319-28658-7_37)) ([Github](https://github.com/anoopkdcs/Ticker-Text-Extraction-from-News-Videos)) </br>
[3] Vivek P, Anoop K, and Lajish V. L. "A Keyword spotting approach for content based indexing and retrieval of malayalam news videos.", National Symposium on Acoustics (NSA) Goa, 2015. ([Paper](https://www.researchgate.net/publication/286442254_A_Keyword_Spotting_Approach_for_Content_Based_Indexing_and_Retrieval_of_Malayalam_News_Videos)) </br>
 
